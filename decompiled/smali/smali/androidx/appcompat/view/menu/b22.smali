.class public final Landroidx/appcompat/view/menu/b22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/ba2;


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/d02;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/d02;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/b22;->a:Landroidx/appcompat/view/menu/d02;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final l(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "auto"

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/b22;->a:Landroidx/appcompat/view/menu/d02;

    invoke-virtual {v0, v1, p2, p3, p1}, Landroidx/appcompat/view/menu/d02;->Y(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/b22;->a:Landroidx/appcompat/view/menu/d02;

    invoke-virtual {p1, v1, p2, p3}, Landroidx/appcompat/view/menu/d02;->y0(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
