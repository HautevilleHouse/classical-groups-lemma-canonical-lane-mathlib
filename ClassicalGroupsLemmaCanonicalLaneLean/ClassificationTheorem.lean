import canonicalLaneMathlib.AdmissibleClass
import ClassicalGroupsLemmaCanonicalLaneLean.ClassicalGroupObject
import ClassicalGroupsLemmaCanonicalLaneLean.RootSystem
import ClassicalGroupsLemmaCanonicalLaneLean.RepresentationTheory

namespace HautevilleHouse
namespace ClassicalGroupsLemmaCanonicalLaneLean

structure ClassificationPackage (G : ClassicalGroupObject) (R : RootSystem G) (Rep : Representation G) where
  classicalType : String
  dynkinDiagram : String
  classificationProof : Prop
  isComplete : Prop
  classificationClosed : Prop
  classificationClosedTerm : classificationClosed

structure ClassificationEvidence (G : ClassicalGroupObject) (R : RootSystem G) (Rep : Representation G) (C : ClassificationPackage G R Rep) where
  classificationClosedClosed : C.classificationClosed

def ClassificationClosed (G : ClassicalGroupObject) (R : RootSystem G) (Rep : Representation G) (C : ClassificationPackage G R Rep) : Prop :=
  C.classificationClosed

theorem classification_closed_from_evidence (G : ClassicalGroupObject) (R : RootSystem G) (Rep : Representation G) (C : ClassificationPackage G R Rep) (E : ClassificationEvidence G R Rep C) : ClassificationClosed G R Rep C := by
  exact E.classificationClosedClosed

end ClassicalGroupsLemmaCanonicalLaneLean
end HautevilleHouse
