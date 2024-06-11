function [] = adjustImage(image, brightness, contrast, msg)
    %% plot how the brightness VS contrast has changed
    syms x 

    figure
    fplot(x)
    hold on
    fplot(contrast * x + brightness)
    xlim([0 255])
    ylim([0 255])
    grid
    legend
    title(msg)

    %% apply values
    img = double(image);
    newImage = contrast * img + brightness;
    newImage(newImage > 255) = 255; 
    newImage(newImage < 0) = 0; 
    newImage = uint8(newImage);

    %% plot image before and after change

    figure
    subplot(2, 1, 1)
    imshow(image)
    title(['Original Image: ', msg]);

    subplot(2, 1, 2)
    imshow(newImage)
    title(['New Image: ', msg]);

end