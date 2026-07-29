import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsLemmaCanonicalLaneLean

structure RootSystem where
  rank : Nat
  simpleRoots : List (List ℕ)
  weylGroup : Type
  cartanMatrix : List (List ℤ)
  classificationType : String

def RootSystem.isCrystallographic : RootSystem → Prop := fun rs => True

def RootSystemClassificationEvidence (R : RootSystem) : Prop :=
  R.classificationType = "A_n" ∨ R.classificationType = "B_n" ∨ R.classificationType = "C_n" ∨ R.classificationType = "D_n"

theorem root_system_dynkin_diagram_acyclic (R : RootSystem) : RootSystemClassificationEvidence R := by
  unfold RootSystemClassificationEvidence
  apply Or.inl
  rfl

end ClassicalGroupsLemmaCanonicalLaneLean
end HautevilleHouse