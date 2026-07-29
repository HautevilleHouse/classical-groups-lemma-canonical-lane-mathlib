import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsLemmaCanonicalLaneLean

structure ClassicalGroupObject where
  groupType : Type
  field : Type
  representation : Type
  isClassical : Prop
  isSimple : Prop
  isAlgebraic : Prop
  conclusion : isClassical ∧ isSimple ∧ isAlgebraic

def ClassicalGroupWitnessClosed (O : ClassicalGroupObject) : Prop :=
  O.isClassical ∧ O.isSimple ∧ O.isAlgebraic

end ClassicalGroupsLemmaCanonicalLaneLean
end HautevilleHouse
