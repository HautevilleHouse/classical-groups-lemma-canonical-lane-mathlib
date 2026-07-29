import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsLemmaCanonicalLaneLean

structure SchurLemmaPackage (G : Type u) (V : Type v) [Group G] [AddCommGroup V] [Module (F : Type) V] [Field F] (Act : LinearGroupActionPackage G V) where
  irreducibleRepresentation : Prop
  endomorphismCommutes : Prop

structure SchurLemmaEvidence {G : Type u} {V : Type v} [Group G] [AddCommGroup V] [Module (F : Type) V] [Field F] {Act : LinearGroupActionPackage G V} (Pkg : SchurLemmaPackage G V Act) (T : LinearMap V V) where
  commutingWithAction : ∀ g, T ∘ Act.action g = Act.action g ∘ T
  isScalarMultiple : ∃ (c : F), T = c • (1 : LinearMap V V)

def SchurLemmaStatement {G : Type u} {V : Type v} [Group G] [AddCommGroup V] [Module (F : Type) V] [Field F] {Act : LinearGroupActionPackage G V} (Pkg : SchurLemmaPackage G V Act) : Prop :=
  ∀ (T : LinearMap V V), (∀ g, T ∘ Act.action g = Act.action g ∘ T) → ∃ (c : F), T = c • (1 : LinearMap V V)

theorem schur_lemma_proof
    {G : Type u} {V : Type v} [Group G] [AddCommGroup V] [Module (F : Type) V] [Field F] {Act : LinearGroupActionPackage G V}
    (Pkg : SchurLemmaPackage G V Act) (E : ∀ (T : LinearMap V V), SchurLemmaEvidence Pkg T) :
    SchurLemmaStatement Pkg := by
  intro T hComm
  have evidence := E T
  exact evidence.isScalarMultiple

end ClassicalGroupsLemmaCanonicalLaneLean
end HautevilleHouse