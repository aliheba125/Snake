.class public Landroidx/appcompat/view/menu/wy0;
.super Landroidx/appcompat/view/menu/ob;
.source "SourceFile"


# instance fields
.field public p:Landroid/os/IInterface;

.field public q:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/ob;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/wy0;->p:Landroid/os/IInterface;

    return-object v0
.end method

.method public i(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "asBinder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/wy0;->p:Landroid/os/IInterface;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p3, :cond_2

    array-length p1, p3

    if-lez p1, :cond_2

    const/4 p1, 0x0

    aget-object v0, p3, p1

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/wy0;->q:Ljava/lang/String;

    aput-object v0, p3, p1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Landroidx/appcompat/view/menu/f5;->a:Landroidx/appcompat/view/menu/go0;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/go0;->p()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->p()I

    move-result p1

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/mg;->b(Ljava/lang/Object;I)V

    :cond_2
    :goto_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/wy0;->p:Landroid/os/IInterface;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public l(Landroid/os/IInterface;Ljava/lang/String;)Landroid/os/IInterface;
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/wy0;->p:Landroid/os/IInterface;

    iput-object p2, p0, Landroidx/appcompat/view/menu/wy0;->q:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ob;->b()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ob;->g()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IInterface;

    return-object p1
.end method
