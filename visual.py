import os
import random
from PIL import Image

# 输入文件夹路径
folder_path = "/inspire/hdd/project/embodied-multimodality/public/lzjjin/fudan-course/DATA130051.01/PJ3/TensoRF/log/tensorf_Wineholder_VM/tensorf_Wineholder_VM/imgs_test_all/rgbd"  # 替换为你的文件夹路径

# 获取文件夹中的所有图片文件
image_files = [f for f in os.listdir(folder_path) if f.lower().endswith(('png', 'jpg', 'jpeg', 'gif', 'bmp'))]

# 随机选择9张图片
selected_images = random.sample(image_files, 9)

# 创建一个3x3的空白图像
width, height = 600, 300  # 每个子图像的宽度和高度，可以根据需要调整
output_image = Image.new('RGB', (width * 3, height * 3))

# 填充3x3网格
for i, img_file in enumerate(selected_images):
    img_path = os.path.join(folder_path, img_file)
    img = Image.open(img_path)
    img = img.resize((width, height))  # 调整每张图像的大小
    
    # 计算图像的放置位置
    x_offset = (i % 3) * width
    y_offset = (i // 3) * height
    
    # 将图像粘贴到大图中
    output_image.paste(img, (x_offset, y_offset))

# 保存最终的3x3子图
output_image.save("output_collage.jpg")
print("子图已保存为 output_collage.jpg")
