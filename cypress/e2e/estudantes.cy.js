describe('Testes da página MongoDB JSON Lab', () => {
  beforeEach(() => {
    cy.visit('http://127.0.0.1:5500')
  })

  it('deve clicar no botão Ver estudantes com sucesso', () => {
    cy.contains('button', 'Ver estudantes').click()

    cy.get('#resultado')
      .should('be.visible')
      .and('not.be.empty')

    cy.contains('Lista de estudantes').should('be.visible')
    cy.contains('Richard Balestrim').should('be.visible')
  }),

    it('deve clicar no botão Ver professores com sucesso', () => {
      cy.contains('button', 'Ver professores').click()

      cy.get('#resultado')
        .should('be.visible')
        .and('not.be.empty')

      cy.contains('Lista de professores').should('be.visible')
    }),

    it('deve clicar no botão Ver consultas com sucesso', () => {
      cy.contains('button', 'Ver consultas').click()

      cy.get('#resultado')
        .should('be.visible')
        .and('not.be.empty')

      cy.contains('Consultas MongoDB').should('be.visible')
    }),

    it('deve clicar no botão Limpar tela com sucesso', () => {
      cy.contains('button', 'Ver estudantes').click()

      cy.get('#resultado')
        .should('be.visible')
        .and('not.be.empty')

      cy.contains('button', 'Limpar tela').click()

      cy.get('#resultado')
        .should('exist')
        .and('be.empty')
    })

})