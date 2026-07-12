.class public final Landroidx/appcompat/view/menu/m51$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/OnReceiveContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/m51;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "o"
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/view/menu/jg0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/jg0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/m51$o;->a:Landroidx/appcompat/view/menu/jg0;

    return-void
.end method


# virtual methods
.method public onReceiveContent(Landroid/view/View;Landroid/view/ContentInfo;)Landroid/view/ContentInfo;
    .locals 2

    invoke-static {p2}, Landroidx/appcompat/view/menu/uf;->g(Landroid/view/ContentInfo;)Landroidx/appcompat/view/menu/uf;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/m51$o;->a:Landroidx/appcompat/view/menu/jg0;

    invoke-interface {v1, p1, v0}, Landroidx/appcompat/view/menu/jg0;->a(Landroid/view/View;Landroidx/appcompat/view/menu/uf;)Landroidx/appcompat/view/menu/uf;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-ne p1, v0, :cond_1

    return-object p2

    :cond_1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/uf;->f()Landroid/view/ContentInfo;

    move-result-object p1

    return-object p1
.end method
