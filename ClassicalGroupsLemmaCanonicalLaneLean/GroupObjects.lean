import ClassicalGroupsLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup

namespace HautevilleHouse
namespace ClassicalGroupsLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure GroupSpace where
  carrier : Type
  groupStructure : Group carrier

group
structure GroupAdmittedObject where
  space : GroupSpace
  field : Type
  fieldStructure : Field field
  classicalGroup : Prop
  simplicity : Prop
  conclusion : simplicity

structure GroupEndgameState where
  object : GroupAdmittedObject

def GroupWitnessClosed (O : GroupAdmittedObject) : Prop :=
  O.simplicity

end ClassicalGroupsLemmaCanonicalLaneLean
end HautevilleHouse
