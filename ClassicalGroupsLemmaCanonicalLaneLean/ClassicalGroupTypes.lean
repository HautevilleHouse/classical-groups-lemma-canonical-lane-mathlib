import ClassicalGroupsLemmaCanonicalLaneLean.GroupObjects

namespace HautevilleHouse
namespace ClassicalGroupsLemmaCanonicalLaneLean

structure GeneralLinearGroup (n : ℕ) (F : Type) [Field F] where
  matrices : Matrix (Fin n) (Fin n) F
  invertible : IsUnit matrices

def SpecialLinearGroup (n : ℕ) (F : Type) [Field F] : Subgroup (GeneralLinearGroup n F) :=
  { carrier := { g : GeneralLinearGroup n F | g.matrices.det = 1 },
    mul_mem' := by
      intro a b ha hb
      simp [ha, hb, mul_det],
    inv_mem' := by
      intro a ha
      simp [ha, det_inv],
    one_mem' := by
      simp }

structure OrthogonalGroup (n : ℕ) (F : Type) [Field F] [Invertible (2 : F)] where
  matrix : Matrix (Fin n) (Fin n) F
  transposeInv : matrix * matrixᵀ = 1

structure SymplecticGroup (n : ℕ) (F : Type) [Field F] where
  matrix : Matrix (Fin (2*n)) (Fin (2*n)) F
  symplectic : matrix * (Matrix.J (2*n) F) * matrixᵀ = Matrix.J (2*n) F

end ClassicalGroupsLemmaCanonicalLaneLean
end HautevilleHouse
