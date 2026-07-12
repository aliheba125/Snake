.class public abstract Landroidx/appcompat/view/menu/hx0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I

.field public static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/gx0;->b:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/go0$b;->b()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x2000

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/appcompat/view/menu/gx0;->b:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/go0$b;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    sput v0, Landroidx/appcompat/view/menu/hx0;->a:I

    sget-object v0, Landroidx/appcompat/view/menu/gx0;->c:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/go0$b;->b()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/high16 v0, 0x4000000

    goto :goto_1

    :cond_1
    sget-object v0, Landroidx/appcompat/view/menu/gx0;->c:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/go0$b;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    sput v0, Landroidx/appcompat/view/menu/hx0;->b:I

    return-void
.end method

.method public static a()V
    .locals 3

    :try_start_0
    sget-object v0, Landroidx/appcompat/view/menu/gx0;->e:Landroidx/appcompat/view/menu/go0$e;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0$e;->b([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :try_start_1
    sget-object v0, Landroidx/appcompat/view/menu/gx0;->d:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/go0$b;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Landroidx/appcompat/view/menu/hx0;->a:I

    sget v2, Landroidx/appcompat/view/menu/hx0;->b:I

    or-int/2addr v1, v2

    not-int v1, v1

    and-int/2addr v0, v1

    sget-object v1, Landroidx/appcompat/view/menu/gx0;->d:Landroidx/appcompat/view/menu/go0$b;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/go0$b;->d(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
