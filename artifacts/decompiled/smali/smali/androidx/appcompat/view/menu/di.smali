.class public abstract Landroidx/appcompat/view/menu/di;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroidx/appcompat/view/menu/ec;Landroidx/appcompat/view/menu/ec;Ljava/lang/String;)Landroidx/appcompat/view/menu/di;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/r5;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/appcompat/view/menu/r5;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/ec;Landroidx/appcompat/view/menu/ec;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract b()Landroid/content/Context;
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Landroidx/appcompat/view/menu/ec;
.end method

.method public abstract e()Landroidx/appcompat/view/menu/ec;
.end method
