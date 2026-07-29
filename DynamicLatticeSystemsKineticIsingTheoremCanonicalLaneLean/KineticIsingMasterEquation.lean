import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean

structure KineticIsingMasterEquationPackage where
  masterEquation : Type u
  transitionRates : Type v
  detailedBalance : Prop
  glauberDynamics : Prop
  kawasakiDynamics : Prop

structure KineticIsingMasterEquationEvidence (M : KineticIsingMasterEquationPackage) where
  masterEquationClosed : M.masterEquation
  transitionRatesClosed : M.transitionRates
  detailedBalanceClosed : M.detailedBalance
  glauberDynamicsClosed : M.glauberDynamics
  kawasakiDynamicsClosed : M.kawasakiDynamics

def KineticIsingMasterEquationClosed (M : KineticIsingMasterEquationPackage) : Prop :=
  M.masterEquation ∧ M.transitionRates ∧ M.detailedBalance ∧ M.glauberDynamics ∧ M.kawasakiDynamics

theorem kinetic_ising_master_equation_closed_from_evidence (M : KineticIsingMasterEquationPackage) (E : KineticIsingMasterEquationEvidence M) : KineticIsingMasterEquationClosed M := by
  exact And.intro E.masterEquationClosed (And.intro E.transitionRatesClosed (And.intro E.detailedBalanceClosed (And.intro E.glauberDynamicsClosed E.kawasakiDynamicsClosed)))

end DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean
end HautevilleHouse