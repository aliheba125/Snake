.class public abstract Landroidx/appcompat/view/menu/fa0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/fa0$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroidx/appcompat/view/menu/fa0$a;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/z5$b;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/z5$b;-><init>()V

    return-object v0
.end method

.method public static i(Ljava/lang/String;)Landroidx/appcompat/view/menu/fa0$a;
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/fa0;->a()Landroidx/appcompat/view/menu/fa0$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/fa0$a;->g(Ljava/lang/String;)Landroidx/appcompat/view/menu/fa0$a;

    move-result-object p0

    return-object p0
.end method

.method public static j([B)Landroidx/appcompat/view/menu/fa0$a;
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/fa0;->a()Landroidx/appcompat/view/menu/fa0$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/fa0$a;->f([B)Landroidx/appcompat/view/menu/fa0$a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract b()Ljava/lang/Integer;
.end method

.method public abstract c()J
.end method

.method public abstract d()J
.end method

.method public abstract e()Landroidx/appcompat/view/menu/ve0;
.end method

.method public abstract f()[B
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method public abstract h()J
.end method
