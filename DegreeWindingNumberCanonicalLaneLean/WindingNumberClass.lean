import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DegreeWindingNumberCanonicalLaneLean

structure WindingNumberPackage where
  curve : Type u
  point : Type v
  windingNumber : curve → point → ℤ
  continuity : Prop
  homotopyInvariance : Prop
  additivity : Prop

structure WindingNumberEvidence (W : WindingNumberPackage) where
  continuityClosed : W.continuity
  homotopyInvarianceClosed : W.homotopyInvariance
  additivityClosed : W.additivity

def WindingNumberClosed (W : WindingNumberPackage) : Prop :=
  W.continuity ∧ W.homotopyInvariance ∧ W.additivity

theorem winding_number_closed_from_evidence (W : WindingNumberPackage)
    (E : WindingNumberEvidence W) : WindingNumberClosed W := by
  exact And.intro E.continuityClosed (And.intro E.homotopyInvarianceClosed E.additivityClosed)

end DegreeWindingNumberCanonicalLaneLean
end HautevilleHouse
