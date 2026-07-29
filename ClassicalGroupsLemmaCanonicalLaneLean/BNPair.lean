import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsLemmaCanonicalLaneLean

structure BNPairPackage {G : Type u} [Group G] where
  borelSubgroup : Subgroup G
  maximalTorus : Subgroup G
  weylGroup : Type v
  weylGroupAct : MulAction (WeylGroup G) (MaximalTorus G)
  rootSystem : Type w
  positiveRoots : Set (RootSystem G)
  simpleRoots : Set (RootSystem G)
  bnAxioms : Prop
  bruhatDecomposition : Prop

structure BNPairEvidence {G : Type u} [Group G] (Pkg : BNPairPackage G) where
  bnAxiomsClosed : Pkg.bnAxioms
  bruhatDecompositionClosed : Pkg.bruhatDecomposition

def BNPairClosed {G : Type u} [Group G] (Pkg : BNPairPackage G) : Prop :=
  Pkg.bnAxioms ∧ Pkg.bruhatDecomposition

theorem bn_pair_closed_from_evidence {G : Type u} [Group G] (Pkg : BNPairPackage G) (E : BNPairEvidence Pkg) : BNPairClosed Pkg := by
  exact And.intro E.bnAxiomsClosed E.bruhatDecompositionClosed

end ClassicalGroupsLemmaCanonicalLaneLean
end HautevilleHouse