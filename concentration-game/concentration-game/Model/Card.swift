//
//  Card.swift
//  concentration-game
//
//  Created by Giovanni Vicentin Moratto on 17/09/21.
//

import Foundation

struct Card: Hashable {
    // Representa a model de um card no game
    
    // MARK: - Attributes
    
    var isFaceUp: Bool = false
    // Variável com informação de virado ou não para cima.
    
    /*
     Inicializada com valor de falso. É responsável pelo efeito visual de virar o card no game.
     */
    
    var isMatched: Bool = false
    // Variável com informação de combinado ou não com outro card.
    
    /*
     Inicializada com valor de falso. É responsável pelo efeito visual de retirar o card.
     */
    
    var twoCardsFaceUp: Bool = false
    // Variável com informação de que existem ou não dois cards virados para cima no game.
    
    /*
     Inicializada com valor de falso. É responsável pelo efeito visual de temporizador na visualização dos cards.
     */
    
    private var identifier: Int
    // Variável com um valor de Int que representa um identificador no game.
    
    /*
     Cada par de card terá um identificador único.
     */
    
    // MARK: - Static Attributes
    
    private static var identifierFactory: Int = 0
    // Variável com um valor de Int que representa um identificador no game.
    
    /*
     Inicializada com valor 0. É responsável por criar os identificadores, aumentando seu valor a cada chamada do método getUniqueIdentifier().
     */
    
    // MARK: - Static Methods
    
    /// Método para retornar um ID usado como um identificador de cartão
    private static func getUniqueIdentifier() -> Int {
        
        identifierFactory += 1
        return identifierFactory
    }
    
    /// Método hashValue
    func hash(into hasher: inout Hasher) {
        // var hashValue: Int { return identifier } - Deprecated
        
            hasher.combine(identifier)
            hasher.combine(identifier)
        }
    
    /// protocols stubs
    static func ==(lhs: Card, rhs: Card) -> Bool {
        return lhs.identifier == rhs.identifier
    }
    
    // MARK: - Initializers (Constructors)
    
    init() {
        
        /*
         Cria um card com o ID gerado. Sempre que instanciar um card, o atributo identifier será atualizado para um novo valor.
         */
        
        self.identifier = Card.getUniqueIdentifier()
        // self == this no java
    }
    
}
