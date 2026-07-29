import DegreeWindingNumberCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DegreeWindingNumberCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  WindingNumberWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DegreeWindingNumberCanonicalLaneLean
end HautevilleHouse