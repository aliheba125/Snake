.class public final synthetic Landroidx/appcompat/view/menu/s02;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public synthetic m:Landroidx/appcompat/view/menu/d02;

.field public synthetic n:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/d02;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/s02;->m:Landroidx/appcompat/view/menu/d02;

    iput-object p2, p0, Landroidx/appcompat/view/menu/s02;->n:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/s02;->m:Landroidx/appcompat/view/menu/d02;

    iget-object v1, p0, Landroidx/appcompat/view/menu/s02;->n:Ljava/lang/String;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/hr1;->p()Landroidx/appcompat/view/menu/zs1;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/zs1;->K(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/hr1;->p()Landroidx/appcompat/view/menu/zs1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/zs1;->I()V

    :cond_0
    return-void
.end method
