import canonicalLaneMathlib.AdmissibleClass
import DegreeWindingNumberCanonicalLaneLean.CauchyIntegral

namespace HautevilleHouse
namespace DegreeWindingNumberCanonicalLaneLean

structure HomotopyInvariancePackage (C : CauchyIntegralPackage A) where
  homotopyType : Type
  windingNumberHomotopyInvariant : Prop
  homotopyInvariantClosed : windingNumberHomotopyInvariant

def HomotopyInvarianceClosed (H : HomotopyInvariancePackage C) : Prop :=
  H.windingNumberHomotopyInvariant

theorem homotopy_invariance_closed_from_evidence (H : HomotopyInvariancePackage C) : HomotopyInvarianceClosed H :=
  H.homotopyInvariantClosed

end DegreeWindingNumberCanonicalLaneLean
end HautevilleHouse
