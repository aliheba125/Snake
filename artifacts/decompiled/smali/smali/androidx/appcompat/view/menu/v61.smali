.class public abstract Landroidx/appcompat/view/menu/v61;
.super Landroidx/appcompat/view/menu/s61;
.source "SourceFile"


# static fields
.field public static d:Z = true

.field public static e:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/s61;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 1

    sget-boolean v0, Landroidx/appcompat/view/menu/v61;->d:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/u61;->a(Landroid/view/View;Landroid/graphics/Matrix;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    sput-boolean p1, Landroidx/appcompat/view/menu/v61;->d:Z

    :cond_0
    :goto_0
    return-void
.end method

.method public h(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 1

    sget-boolean v0, Landroidx/appcompat/view/menu/v61;->e:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/t61;->a(Landroid/view/View;Landroid/graphics/Matrix;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    sput-boolean p1, Landroidx/appcompat/view/menu/v61;->e:Z

    :cond_0
    :goto_0
    return-void
.end method
