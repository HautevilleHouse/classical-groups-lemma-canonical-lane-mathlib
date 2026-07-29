import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsLemmaCanonicalLaneLean

structure BruhatDecompositionPackage where
  reductiveGroup : Type
  weylGroup : Type
  bruhatCells : Type
  doubleCosetDecomposition : Prop
  cellDecompositionIsAffine : Prop
  closureRelations : Prop

structure BruhatDecompositionEvidence (B : BruhatDecompositionPackage) where
  doubleCosetDecompositionClosed : B.doubleCosetDecomposition
  cellDecompositionIsAffineClosed : B.cellDecompositionIsAffine
  closureRelationsClosed : B.closureRelations

def BruhatDecompositionClosed (B : BruhatDecompositionPackage) : Prop :=
  B.doubleCosetDecomposition ∧ B.cellDecompositionIsAffine ∧ B.closureRelations

theorem bruhat_decomposition_closed_from_evidence (B : BruhatDecompositionPackage)
    (E : BruhatDecompositionEvidence B) : BruhatDecompositionClosed B := by
  exact And.intro E.doubleCosetDecompositionClosed
    (And.intro E.cellDecompositionIsAffineClosed E.closureRelationsClosed)

end ClassicalGroupsLemmaCanonicalLaneLean
end HautevilleHouse