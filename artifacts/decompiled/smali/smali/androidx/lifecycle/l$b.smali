.class public final Landroidx/lifecycle/l$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/lj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/l$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/appcompat/view/menu/a90;
    .locals 1

    invoke-static {}, Landroidx/lifecycle/l;->c()Landroidx/lifecycle/l;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroidx/lifecycle/l;->c()Landroidx/lifecycle/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/l;->i(Landroid/content/Context;)V

    return-void
.end method
