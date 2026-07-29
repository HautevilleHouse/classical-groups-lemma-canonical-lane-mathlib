import ClassicalGroupsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GroupWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ClassicalGroupsLemmaCanonicalLaneLean
end HautevilleHouse
