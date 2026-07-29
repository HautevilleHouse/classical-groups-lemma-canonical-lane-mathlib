import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsLemmaCanonicalLaneLean

structure InvariantBilinearFormPackage (G : Type u) (V : Type v) [Group G] [AddCommGroup V] [Module (F : Type) V] (Act : LinearGroupActionPackage G V) where
  form : V → V → (F : Type)
  bilinear : BilinearMap form
  symmetric : Prop
  nondegenerate : Prop
  invariant : ∀ g v w, form (Act.action g v) (Act.action g w) = form v w

structure InvariantBilinearFormEvidence {G : Type u} {V : Type v} [Group G] [AddCommGroup V] [Module (F : Type) V] {Act : LinearGroupActionPackage G V} (Pkg : InvariantBilinearFormPackage G V Act) where
  bilinearClosed : Pkg.bilinear
  symmetricClosed : Pkg.symmetric
  nondegenerateClosed : Pkg.nondegenerate
  invariantClosed : Pkg.invariant

def InvariantBilinearFormClosed {G : Type u} {V : Type v} [Group G] [AddCommGroup V] [Module (F : Type) V] {Act : LinearGroupActionPackage G V} (Pkg : InvariantBilinearFormPackage G V Act) : Prop :=
  Pkg.bilinear ∧ Pkg.symmetric ∧ Pkg.nondegenerate ∧ Pkg.invariant

theorem invariant_bilinear_form_closed_from_evidence
    {G : Type u} {V : Type v} [Group G] [AddCommGroup V] [Module (F : Type) V] {Act : LinearGroupActionPackage G V}
    (Pkg : InvariantBilinearFormPackage G V Act) (E : InvariantBilinearFormEvidence Pkg) :
    InvariantBilinearFormClosed Pkg := by
  exact And.intro E.bilinearClosed (And.intro E.symmetricClosed (And.intro E.nondegenerateClosed E.invariantClosed))

end ClassicalGroupsLemmaCanonicalLaneLean
end HautevilleHouse