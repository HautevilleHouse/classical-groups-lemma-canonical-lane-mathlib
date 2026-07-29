import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsLemmaCanonicalLaneLean

structure LinearGroupActionPackage (G : Type u) (V : Type v) [Group G] [AddCommGroup V] [Module (F : Type) V] where
  action : G → (V → V)
  linearity : ∀ g, LinearMap (action g)
  identityAction : action (1 : G) = id
  composition : ∀ g h, action (g * h) = action g ∘ action h

structure LinearGroupActionEvidence {G : Type u} {V : Type v} [Group G] [AddCommGroup V] [Module (F : Type) V] (Pkg : LinearGroupActionPackage G V) where
  linearityClosed : Pkg.linearity
  identityActionClosed : Pkg.identityAction
  compositionClosed : Pkg.composition

def LinearGroupActionClosed {G : Type u} {V : Type v} [Group G] [AddCommGroup V] [Module (F : Type) V] (Pkg : LinearGroupActionPackage G V) : Prop :=
  Pkg.linearity ∧ Pkg.identityAction ∧ Pkg.composition

theorem linear_group_action_closed_from_evidence
    {G : Type u} {V : Type v} [Group G] [AddCommGroup V] [Module (F : Type) V]
    (Pkg : LinearGroupActionPackage G V) (E : LinearGroupActionEvidence Pkg) :
    LinearGroupActionClosed Pkg := by
  exact And.intro E.linearityClosed (And.intro E.identityActionClosed E.compositionClosed)

end ClassicalGroupsLemmaCanonicalLaneLean
end HautevilleHouse