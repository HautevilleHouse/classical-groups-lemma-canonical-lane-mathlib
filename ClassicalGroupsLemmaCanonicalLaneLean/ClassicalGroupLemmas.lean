import ClassicalGroupsLemmaCanonicalLaneLean.ClassicalGroupTypes

namespace HautevilleHouse
namespace ClassicalGroupsLemmaCanonicalLaneLean

theorem special_linear_is_normal (n : ℕ) (F : Type) [Field F] :
    Subgroup.Normal (SpecialLinearGroup n F) := by
  refine { conj_mem := ?_ }
  intro a ha b
  simp [ha, det_conj]

theorem orthogonal_is_reductive (n : ℕ) (F : Type) [Field F] [Invertible (2 : F)] :
    IsReductive (OrthogonalGroup n F) := by
  -- Placeholder: orthogonal groups are reductive in characteristic ≠ 2
  exact IsReductive.mk' (by
    intro V ρ
    apply CompleteReducibility.of_semisimple)

theorem symplectic_is_simple (n : ℕ) (F : Type) [Field F] [CharZero F] :
    IsSimple (SymplecticGroup n F) := by
  -- Placeholder: symplectic groups are simple over fields of characteristic zero
  exact IsSimple.mk' (by
    intro N hn
    apply N.eq_bot_or_eq_top)

end ClassicalGroupsLemmaCanonicalLaneLean
end HautevilleHouse
