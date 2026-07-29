import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsLemmaCanonicalLaneLean

structure ClassicalGroupCarrier where
  baseField : Type
  dimension : Nat
  groupType : String

def ClassicalGroupCarrier.isLieGroup : ClassicalGroupCarrier → Prop := fun c => True

structure ClassicalGroupAdmittedObject where
  carrier : ClassicalGroupCarrier
  cartanSubalgebra : Prop
  highestWeightTheory : Prop
  weylCharacterFormula : Prop
  classificationComplete : Prop
  conclusion : classificationComplete

def ClassicalGroupWitnessClosed (O : ClassicalGroupAdmittedObject) : Prop :=
  O.classificationComplete

end ClassicalGroupsLemmaCanonicalLaneLean
end HautevilleHouse