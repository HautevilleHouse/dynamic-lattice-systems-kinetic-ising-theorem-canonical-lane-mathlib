import DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean.DynamicLatticeAdmissibleClass

namespace HautevilleHouse
namespace DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  KineticIsingWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean
end HautevilleHouse