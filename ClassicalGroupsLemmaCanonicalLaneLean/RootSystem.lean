import canonicalLaneMathlib.AdmissibleClass
import ClassicalGroupsLemmaCanonicalLaneLean.ClassicalGroupObject

namespace HautevilleHouse
namespace ClassicalGroupsLemmaCanonicalLaneLean

structure RootSystem (G : ClassicalGroupObject) where
  rootSpace : Type
  simpleRoots : List rootSpace
  weylGroup : Type
  rank : Nat
  cartanMatrix : List (List Nat)
  rootSystemClosed : Prop
  rootSystemClosedTerm : rootSystemClosed

structure RootSystemEvidence (G : ClassicalGroupObject) (R : RootSystem G) where
  rootSystemClosedClosed : R.rootSystemClosed

def RootSystemClosed (G : ClassicalGroupObject) (R : RootSystem G) : Prop :=
  R.rootSystemClosed

theorem root_system_closed_from_evidence (G : ClassicalGroupObject) (R : RootSystem G) (E : RootSystemEvidence G R) : RootSystemClosed G R := by
  exact E.rootSystemClosedClosed

end ClassicalGroupsLemmaCanonicalLaneLean
end HautevilleHouse
