.class public Landroidx/appcompat/view/menu/j1$g;
.super Landroidx/appcompat/view/menu/md0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/j1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/md0;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/j1$g;->f()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    aget-object v2, p3, v0

    move-object v5, v2

    check-cast v5, [Landroid/content/Intent;

    add-int/lit8 v2, v0, 0x2

    aget-object v1, p3, v1

    move-object v6, v1

    check-cast v6, [Ljava/lang/String;

    add-int/lit8 v0, v0, 0x3

    aget-object v1, p3, v2

    move-object v7, v1

    check-cast v7, Landroid/os/IBinder;

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/os/Bundle;

    invoke-static {v5}, Landroidx/appcompat/view/menu/te;->e([Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    array-length p2, v5

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_1

    aget-object v0, v5, p3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->j()Landroidx/appcompat/view/menu/dv0;

    move-result-object v3

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    move-result v4

    invoke-virtual/range {v3 .. v8}, Landroidx/appcompat/view/menu/dv0;->B(I[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public f()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
