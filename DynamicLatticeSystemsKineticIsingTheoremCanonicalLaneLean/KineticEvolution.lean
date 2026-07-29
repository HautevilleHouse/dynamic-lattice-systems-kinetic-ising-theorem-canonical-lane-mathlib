import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean

structure KineticEvolutionPackage where
  masterEquation : Prop
  generatorSpectralGap : Prop
  relaxationTime : Prop
  correlationFunctions : Prop

def KineticEvolutionClosed (K : KineticEvolutionPackage) : Prop :=
  K.masterEquation ∧ K.generatorSpectralGap ∧ K.relaxationTime ∧ K.correlationFunctions

structure KineticEvolutionEvidence (K : KineticEvolutionPackage) where
  masterEquationClosed : K.masterEquation
  generatorSpectralGapClosed : K.generatorSpectralGap
  relaxationTimeClosed : K.relaxationTime
  correlationFunctionsClosed : K.correlationFunctions

theorem kinetic_evolution_closed_from_evidence (K : KineticEvolutionPackage) (E : KineticEvolutionEvidence K) :
    KineticEvolutionClosed K := by
  exact And.intro E.masterEquationClosed (And.intro E.generatorSpectralGapClosed (And.intro E.relaxationTimeClosed E.correlationFunctionsClosed))

end DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean
end HautevilleHouse