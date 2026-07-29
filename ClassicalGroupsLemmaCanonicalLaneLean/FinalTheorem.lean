import ClassicalGroupsLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ClassicalGroupsLemmaCanonicalLaneLean

def ConstrainedClassicalGroupsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_classical_groups_endgame (A : AdmissibleClass) :
    ConstrainedClassicalGroupsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClassicalGroupsLemmaCanonicalLaneLean
end HautevilleHouse
