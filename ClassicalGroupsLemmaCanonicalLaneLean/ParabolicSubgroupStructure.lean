import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsLemmaCanonicalLaneLean

structure ParabolicSubgroupPackage where
  baseField : Type
  vectorSpace : Type
  parabolicSubgroup : Type
  borelSubgroup : Type
  leviDecomposition : Prop
  rootSystem : Prop
  parabolicSubgroupStabilizesFlag : Prop

structure ParabolicSubgroupEvidence (P : ParabolicSubgroupPackage) where
  leviDecompositionClosed : P.leviDecomposition
  rootSystemClosed : P.rootSystem
  parabolicSubgroupStabilizesFlagClosed : P.parabolicSubgroupStabilizesFlag

def ParabolicSubgroupClosed (P : ParabolicSubgroupPackage) : Prop :=
  P.leviDecomposition ∧ P.rootSystem ∧ P.parabolicSubgroupStabilizesFlag

theorem parabolic_subgroup_closed_from_evidence (P : ParabolicSubgroupPackage)
    (E : ParabolicSubgroupEvidence P) : ParabolicSubgroupClosed P := by
  exact And.intro E.leviDecompositionClosed
    (And.intro E.rootSystemClosed E.parabolicSubgroupStabilizesFlagClosed)

end ClassicalGroupsLemmaCanonicalLaneLean
end HautevilleHouse