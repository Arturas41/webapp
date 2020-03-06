const utility = require('../utility');
 
test('absolute - should return positive number for any positive input', () => {
    const result = utility.absolute(1);
    expect(result).toBe(1);
});

test('absolute - should return positive number for any negative input', () => {
    const result = utility.absolute(-1);
    expect(result).toBe(1);
});

test('absolute - should return 0 if input is 0', () => {
    const result = utility.absolute(0);
    expect(result).toBe(0);
});

describe('hello', () => {
    it('should return the hello message', () => {
        const result = utility.hello('Stranger');
        expect(result).toBe('Hello Stranger!');
    }),
    it('should return the hello message', () => {
        const result = utility.hello('Stranger');
        expect(result).toContain('Stranger');
    })
});

describe('getTickers', () => {
    it('should return three stock tickers', () => {
        const result = utility.getTickers();
        expect(result).toEqual(expect.arrayContaining(['NFLX', 'MSFT', 'AAPL']));
    })
});

describe('getGame', () => {
    it('should return the game with the provided id', () => {
        const result = utility.getGame(1);
        expect(result).toEqual({
            id: 1,
            price: 10
        })
    })
});

describe('createUser', () => {
    it('should throw an error if username is falsy', () => {
        const args = [null, undefined, NaN, '', 0, false];
        args.forEach(a => {
            expect(() => {
                utility.createUser(a)
            }).toThrow();
        });
    })
 
    it('should return a user object when a valid username is provided', () => {
        const result = utility.createUser('Jester');
        expect(result).toMatchObject({
            username: 'Jester'
        });
        expect(result.id).toBeGreaterThan(0);
    });
});