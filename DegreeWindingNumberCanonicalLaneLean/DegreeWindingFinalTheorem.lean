import canonicalLaneMathlib.AdmissibleClass
import DegreeWindingNumberCanonicalLaneLean.RoucheTheorem
import DegreeWindingNumberCanonicalLaneLean.BridgeLemmas
import DegreeWindingNumberCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DegreeWindingNumberCanonicalLaneLean

def ConstrainedDegreeWindingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_degree_winding_endgame (A : AdmissibleClass) :
    ConstrainedDegreeWindingClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DegreeWindingNumberCanonicalLaneLean
end HautevilleHouse
