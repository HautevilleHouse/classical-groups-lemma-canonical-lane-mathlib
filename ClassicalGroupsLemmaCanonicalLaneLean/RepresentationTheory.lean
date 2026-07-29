import canonicalLaneMathlib.AdmissibleClass
import ClassicalGroupsLemmaCanonicalLaneLean.ClassicalGroupObject

namespace HautevilleHouse
namespace ClassicalGroupsLemmaCanonicalLaneLean

structure Representation (G : ClassicalGroupObject) where
  module : Type
  action : G.groupType → module → module
  isIrreducible : Prop
  isFaithful : Prop
  dimension : Nat
  representationClosed : Prop
  representationClosedTerm : representationClosed

structure RepresentationEvidence (G : ClassicalGroupObject) (R : Representation G) where
  representationClosedClosed : R.representationClosed

def RepresentationClosed (G : ClassicalGroupObject) (R : Representation G) : Prop :=
  R.representationClosed

theorem representation_closed_from_evidence (G : ClassicalGroupObject) (R : Representation G) (E : RepresentationEvidence G R) : RepresentationClosed G R := by
  exact E.representationClosedClosed

end ClassicalGroupsLemmaCanonicalLaneLean
end HautevilleHouse
