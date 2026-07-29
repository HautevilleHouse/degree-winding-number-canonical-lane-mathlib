import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DegreeWindingNumberCanonicalLaneLean.WindingNumberClass

namespace HautevilleHouse
namespace DegreeWindingNumberCanonicalLaneLean

structure IndexTheoremPackage (W : WindingNumberPackage) where
  vectorField : Type u
  isolatedZero : Type v
  indexSum : Prop
  eulerCharacteristic : Prop
  poincareHopfTheorem : Prop

structure IndexTheoremEvidence {W : WindingNumberPackage}
    (I : IndexTheoremPackage W) where
  indexSumClosed : I.indexSum
  eulerCharacteristicClosed : I.eulerCharacteristic
  poincareHopfTheoremClosed : I.poincareHopfTheorem

def IndexTheoremClosed {W : WindingNumberPackage}
    (I : IndexTheoremPackage W) : Prop :=
  I.indexSum ∧ I.eulerCharacteristic ∧ I.poincareHopfTheorem

theorem index_theorem_closed_from_evidence {W : WindingNumberPackage}
    (I : IndexTheoremPackage W) (E : IndexTheoremEvidence I) :
    IndexTheoremClosed I := by
  exact And.intro E.indexSumClosed (And.intro E.eulerCharacteristicClosed E.poincareHopfTheoremClosed)

end DegreeWindingNumberCanonicalLaneLean
end HautevilleHouse
