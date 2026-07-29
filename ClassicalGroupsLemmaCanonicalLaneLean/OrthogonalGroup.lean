import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsLemmaCanonicalLaneLean

structure OrthogonalGroupPackage (V : Type v) [AddCommGroup V] [Module ℝ V] where
  form : V → V → ℝ
  bilinear : BilinearMap form
  symmetric : Prop
  nondegenerate : Prop
  groupCarrier : Set (LinearMap V V)
  groupMultiplication : LinearMap V V → LinearMap V V → LinearMap V V
  groupIdentity : LinearMap V V
  groupInverse : LinearMap V V → LinearMap V V
  preservesForm : ∀ (f : LinearMap V V), f ∈ groupCarrier → ∀ v w, form (f v) (f w) = form v w
  groupAxioms : Group groupCarrier

structure OrthogonalGroupEvidence (V : Type v) [AddCommGroup V] [Module ℝ V] (Pkg : OrthogonalGroupPackage V) where
  bilinearClosed : Pkg.bilinear
  symmetricClosed : Pkg.symmetric
  nondegenerateClosed : Pkg.nondegenerate
  preservesFormClosed : Pkg.preservesForm
  groupAxiomsClosed : Pkg.groupAxioms

def OrthogonalGroupClosed (V : Type v) [AddCommGroup V] [Module ℝ V] (Pkg : OrthogonalGroupPackage V) : Prop :=
  Pkg.bilinear ∧ Pkg.symmetric ∧ Pkg.nondegenerate ∧ Pkg.preservesForm ∧ Pkg.groupAxioms

theorem orthogonal_group_closed_from_evidence
    (V : Type v) [AddCommGroup V] [Module ℝ V] (Pkg : OrthogonalGroupPackage V) (E : OrthogonalGroupEvidence V Pkg) :
    OrthogonalGroupClosed V Pkg := by
  exact And.intro E.bilinearClosed (And.intro E.symmetricClosed (And.intro E.nondegenerateClosed (And.intro E.preservesFormClosed E.groupAxiomsClosed)))

end ClassicalGroupsLemmaCanonicalLaneLean
end HautevilleHouse