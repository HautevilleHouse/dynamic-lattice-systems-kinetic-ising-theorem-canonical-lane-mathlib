import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean.DynamicLatticeSystems

namespace HautevilleHouse
namespace DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean

structure KineticIsingModelPackage where
  space : DynamicLatticeAdmittedObject
  temperatureDependence : Prop
  couplingStrength : Prop
  magneticField : Prop
  transitionTimes : Prop
  modelWellDefined : Prop

structure KineticIsingModelEvidence (M : KineticIsingModelPackage) where
  temperatureDependenceClosed : M.temperatureDependence
  couplingStrengthClosed : M.couplingStrength
  magneticFieldClosed : M.magneticField
  transitionTimesClosed : M.transitionTimes
  modelWellDefinedClosed : M.modelWellDefined

def KineticIsingModelClosed (M : KineticIsingModelPackage) : Prop :=
  M.temperatureDependence ∧ M.couplingStrength ∧ M.magneticField ∧ M.transitionTimes ∧ M.modelWellDefined

theorem kinetic_ising_model_closed_from_evidence (M : KineticIsingModelPackage) (E : KineticIsingModelEvidence M) :
    KineticIsingModelClosed M := by
  exact And.intro E.temperatureDependenceClosed
    (And.intro E.couplingStrengthClosed
      (And.intro E.magneticFieldClosed
        (And.intro E.transitionTimesClosed E.modelWellDefinedClosed)))

end DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean
end HautevilleHouse