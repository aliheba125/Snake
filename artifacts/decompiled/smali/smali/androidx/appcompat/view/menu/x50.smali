.class public final synthetic Landroidx/appcompat/view/menu/x50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/snake/helper/InternalWebBrowser;


# direct methods
.method public synthetic constructor <init>(Lcom/snake/helper/InternalWebBrowser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/x50;->a:Lcom/snake/helper/InternalWebBrowser;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/x50;->a:Lcom/snake/helper/InternalWebBrowser;

    invoke-static {v0, p1}, Lcom/snake/helper/InternalWebBrowser;->a(Lcom/snake/helper/InternalWebBrowser;Landroid/view/View;)V

    return-void
.end method
