import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsLemmaCanonicalLaneLean

structure WeylGroupStructurePackage {G : Type u} [Group G] (B : BNPairPackage G) where
  weylGroup : Type v
  coxeterMatrix : Matrix (Fin (Fintype.card (WeylGroup G))) (Fin (Fintype.card (WeylGroup G))) ℕ
  coxeterRelations : Prop
  lengthFunction : WeylGroup G → ℕ
  simpleReflections : Set (WeylGroup G)
  longestElement : WeylGroup G
  exchangeCondition : Prop
  deletionCondition : Prop

structure WeylGroupStructureEvidence {G : Type u} [Group G] {B : BNPairPackage G} (Pkg : WeylGroupStructurePackage G B) where
  coxeterRelationsClosed : Pkg.coxeterRelations
  exchangeConditionClosed : Pkg.exchangeCondition
  deletionConditionClosed : Pkg.deletionCondition

def WeylGroupStructureClosed {G : Type u} [Group G] {B : BNPairPackage G} (Pkg : WeylGroupStructurePackage G B) : Prop :=
  Pkg.coxeterRelations ∧ Pkg.exchangeCondition ∧ Pkg.deletionCondition

theorem weyl_group_structure_closed_from_evidence {G : Type u} [Group G] {B : BNPairPackage G} (Pkg : WeylGroupStructurePackage G B) (E : WeylGroupStructureEvidence Pkg) : WeylGroupStructureClosed Pkg := by
  exact And.intro E.coxeterRelationsClosed (And.intro E.exchangeConditionClosed E.deletionConditionClosed)

end ClassicalGroupsLemmaCanonicalLaneLean
end HautevilleHouse