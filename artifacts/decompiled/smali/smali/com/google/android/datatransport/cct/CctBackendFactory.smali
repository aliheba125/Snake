.class public Lcom/google/android/datatransport/cct/CctBackendFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/q7;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroidx/appcompat/view/menu/di;)Landroidx/appcompat/view/menu/c21;
    .locals 3

    new-instance v0, Landroidx/appcompat/view/menu/na;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/di;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/di;->e()Landroidx/appcompat/view/menu/ec;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/di;->d()Landroidx/appcompat/view/menu/ec;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Landroidx/appcompat/view/menu/na;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/ec;Landroidx/appcompat/view/menu/ec;)V

    return-object v0
.end method
