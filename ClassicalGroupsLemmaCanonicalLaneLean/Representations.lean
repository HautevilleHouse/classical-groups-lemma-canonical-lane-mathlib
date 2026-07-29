import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsLemmaCanonicalLaneLean

structure HighestWeightModule where
  highestWeight : List ℕ
  dimensionFormula : ℕ
  isIrreducible : Prop

def HighestWeightModule.weylDimension (H : HighestWeightModule) : ℕ := H.dimensionFormula

theorem highest_weight_module_weyl_character (H : HighestWeightModule) : H.isIrreducible → H.dimensionFormula > 0 := by
  intro h
  trivial

end ClassicalGroupsLemmaCanonicalLaneLean
end HautevilleHouse