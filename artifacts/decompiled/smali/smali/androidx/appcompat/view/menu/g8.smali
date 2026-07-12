.class public abstract Landroidx/appcompat/view/menu/g8;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;)Landroidx/appcompat/view/menu/g8;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/p5;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/p5;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static b()Landroidx/appcompat/view/menu/xi;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/g70;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/g70;-><init>()V

    sget-object v1, Landroidx/appcompat/view/menu/h5;->a:Landroidx/appcompat/view/menu/bf;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g70;->j(Landroidx/appcompat/view/menu/bf;)Landroidx/appcompat/view/menu/g70;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g70;->k(Z)Landroidx/appcompat/view/menu/g70;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g70;->i()Landroidx/appcompat/view/menu/xi;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract c()Ljava/util/List;
.end method
