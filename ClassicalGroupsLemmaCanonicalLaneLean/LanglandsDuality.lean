import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsLemmaCanonicalLaneLean

structure LanglandsDualityPackage where
  reductiveGroup : Type
  dualGroup : Type
  rootDatum : Type
  corootDatum : Type
  weylGroupIsomorphic : Prop
  satakeIsomorphism : Prop
  functoriality : Prop

structure LanglandsDualityEvidence (L : LanglandsDualityPackage) where
  weylGroupIsomorphicClosed : L.weylGroupIsomorphic
  satakeIsomorphismClosed : L.satakeIsomorphism
  functorialityClosed : L.functoriality

def LanglandsDualityClosed (L : LanglandsDualityPackage) : Prop :=
  L.weylGroupIsomorphic ∧ L.satakeIsomorphism ∧ L.functoriality

theorem langlands_duality_closed_from_evidence (L : LanglandsDualityPackage)
    (E : LanglandsDualityEvidence L) : LanglandsDualityClosed L := by
  exact And.intro E.weylGroupIsomorphicClosed
    (And.intro E.satakeIsomorphismClosed E.functorialityClosed)

end ClassicalGroupsLemmaCanonicalLaneLean
end HautevilleHouse