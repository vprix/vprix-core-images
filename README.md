## Vprix Core Images

该仓库存储了`Vprix`项目的基础`Image`，所有其他应用的`Image`都是基于`Core Image`生成。
目前该基础`Image`包含`Ubuntu`,`Centos`两个发行版本。并且引入了`vprix`项目的`Agent`，实现了一系列功能。

虽然是基础镜像，也是可以单独启动的。使用方式：

```shell
docker run --rm -it --shm-size=512m -p 8080:8080  vprix/core-ubuntu-focal:develop
```

启动容器以后，可以在浏览器访问: `http://localhost:8080`

## 编译镜像


## 关于 Vprix

`vprix`项目希望创建简单，高效，一致的`linux虚拟桌面环境`交付方式。

让大家能够通过简单的一行命令，就得到完整可用的存在云端的桌面环境。

