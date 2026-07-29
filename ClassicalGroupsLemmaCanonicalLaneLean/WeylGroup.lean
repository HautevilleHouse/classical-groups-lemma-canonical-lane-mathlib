import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsLemmaCanonicalLaneLean

structure WeylGroupPackage (V : Type v) [AddCommGroup V] [Module ℝ V] (R : RootSystemPackage V) where
  weylGroupCarrier : Set (LinearMap V V)
  weylGroupMultiplication : LinearMap V V → LinearMap V V → LinearMap V V
  weylGroupIdentity : LinearMap V V
  weylGroupInverse : LinearMap V V → LinearMap V V
  generatedByReflections : ∀ f ∈ weylGroupCarrier, ∃ (α : V), α ∈ R.rootSet ∧ f = R.reflectionAction.reflect
  groupAxioms : Group weylGroupCarrier

structure WeylGroupEvidence (V : Type v) [AddCommGroup V] [Module ℝ V] {R : RootSystemPackage V} (Pkg : WeylGroupPackage V R) where
  generatedByReflectionsClosed : Pkg.generatedByReflections
  groupAxiomsClosed : Pkg.groupAxioms

def WeylGroupClosed (V : Type v) [AddCommGroup V] [Module ℝ V] {R : RootSystemPackage V} (Pkg : WeylGroupPackage V R) : Prop :=
  Pkg.generatedByReflections ∧ Pkg.groupAxioms

theorem weyl_group_closed_from_evidence
    (V : Type v) [AddCommGroup V] [Module ℝ V] {R : RootSystemPackage V} (Pkg : WeylGroupPackage V R) (E : WeylGroupEvidence V Pkg) :
    WeylGroupClosed V Pkg := by
  exact And.intro E.generatedByReflectionsClosed E.groupAxiomsClosed

end ClassicalGroupsLemmaCanonicalLaneLean
end HautevilleHouse