

## Flexbox Properties

- `display: flex`: Enables flexbox layout for flexible positioning of elements.

    ```css
    div {
      display: flex;
    }
    ```

- `justify-content`: Aligns items along the main axis.

    ```css
    div {
      justify-content: center;
    }
    ```

- `align-items`: Aligns items along the cross-axis.

    ```css
    div {
      align-items: center;
    }
    ```


## Grid Properties

- `display: grid`: Enables CSS Grid layout for structuring elements.

    ```css
    div {
      display: grid;
      grid-template-columns: 1fr 1fr;
    }
    ```


## Animations & Transitions

- `transition`: Creates smooth changes over time.

    ```css
    div {
      transition: all 0.3s ease;
    }
    ```

- `animation`: Applies an animation effect to an element.

    ```css
    div {
      animation: fadeIn 2s;
    }
    ```

- `@keyframes`: Defines the sequence of animation frames.

    ```css
    @keyframes fadeIn {
      from {
        opacity: 0;
      }
      to {
        opacity: 1;
      }
    }
    ```


