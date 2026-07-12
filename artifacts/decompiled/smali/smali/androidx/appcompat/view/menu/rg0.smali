.class public abstract Landroidx/appcompat/view/menu/rg0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroidx/appcompat/view/menu/rg0;
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/d;->e()Landroidx/appcompat/view/menu/rg0;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/Object;)Landroidx/appcompat/view/menu/rg0;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/sj0;

    invoke-static {p0}, Landroidx/appcompat/view/menu/nj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/sj0;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public abstract b()Ljava/lang/Object;
.end method

.method public abstract c()Z
.end method
