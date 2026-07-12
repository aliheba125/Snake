.class public Landroidx/appcompat/view/menu/go0$a;
.super Landroidx/appcompat/view/menu/go0$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/go0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Constructor;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/go0$c;-><init>(Ljava/lang/reflect/AccessibleObject;)V

    return-void
.end method


# virtual methods
.method public varargs b([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/go0$c;->a:Ljava/lang/reflect/AccessibleObject;

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method
