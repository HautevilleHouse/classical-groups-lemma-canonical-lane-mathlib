import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsLemmaCanonicalLaneLean

structure ParabolicSubgroupPackage {G : Type u} [Group G] where
  borelSubgroup : Subgroup G
  parabolicSubgroups : Set (Subgroup G)
  borelContained : ∀ (P : Subgroup G), P ∈ parabolicSubgroups → borelSubgroup ≤ P
  selfNormalizing : borelSubgroup.Subgroup.selfNormalizing = borelSubgroup
  conjugacyBorel : Prop
  conjugacyParabolic : Prop

structure ParabolicSubgroupEvidence {G : Type u} [Group G] (Pkg : ParabolicSubgroupPackage G) where
  borelContainedClosed : ∀ (P : Subgroup G), P ∈ Pkg.parabolicSubgroups → Pkg.borelSubgroup ≤ P
  selfNormalizingClosed : Pkg.borelSubgroup.Subgroup.selfNormalizing = Pkg.borelSubgroup
  conjugacyBorelClosed : Pkg.conjugacyBorel
  conjugacyParabolicClosed : Pkg.conjugacyParabolic

def ParabolicSubgroupClosed {G : Type u} [Group G] (Pkg : ParabolicSubgroupPackage G) : Prop :=
  (∀ (P : Subgroup G), P ∈ Pkg.parabolicSubgroups → Pkg.borelSubgroup ≤ P) ∧
  (Pkg.borelSubgroup.Subgroup.selfNormalizing = Pkg.borelSubgroup) ∧
  Pkg.conjugacyBorel ∧ Pkg.conjugacyParabolic

theorem parabolic_subgroup_closed_from_evidence {G : Type u} [Group G] (Pkg : ParabolicSubgroupPackage G) (E : ParabolicSubgroupEvidence Pkg) : ParabolicSubgroupClosed Pkg := by
  exact And.intro E.borelContainedClosed (And.intro E.selfNormalizingClosed (And.intro E.conjugacyBorelClosed E.conjugacyParabolicClosed))

end ClassicalGroupsLemmaCanonicalLaneLean
end HautevilleHouse