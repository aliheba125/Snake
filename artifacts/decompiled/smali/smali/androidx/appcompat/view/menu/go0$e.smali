.class public Landroidx/appcompat/view/menu/go0$e;
.super Landroidx/appcompat/view/menu/go0$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/go0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/go0$c;-><init>(Ljava/lang/reflect/AccessibleObject;)V

    return-void
.end method


# virtual methods
.method public varargs b([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/go0$c;->a:Ljava/lang/reflect/AccessibleObject;

    check-cast v1, Ljava/lang/reflect/Method;

    invoke-virtual {v1, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    return-object v0
.end method

.method public varargs c([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/go0$c;->a:Ljava/lang/reflect/AccessibleObject;

    check-cast v1, Ljava/lang/reflect/Method;

    invoke-virtual {v1, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method
