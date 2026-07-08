.class public final Landroidx/appcompat/view/menu/wn;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/wn$b;,
        Landroidx/appcompat/view/menu/wn$c;,
        Landroidx/appcompat/view/menu/wn$a;
    }
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/view/menu/wn$b;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "textView cannot be null"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/qj0;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    new-instance p2, Landroidx/appcompat/view/menu/wn$c;

    invoke-direct {p2, p1}, Landroidx/appcompat/view/menu/wn$c;-><init>(Landroid/widget/TextView;)V

    iput-object p2, p0, Landroidx/appcompat/view/menu/wn;->a:Landroidx/appcompat/view/menu/wn$b;

    goto :goto_0

    :cond_0
    new-instance p2, Landroidx/appcompat/view/menu/wn$a;

    invoke-direct {p2, p1}, Landroidx/appcompat/view/menu/wn$a;-><init>(Landroid/widget/TextView;)V

    iput-object p2, p0, Landroidx/appcompat/view/menu/wn;->a:Landroidx/appcompat/view/menu/wn$b;

    :goto_0
    return-void
.end method


# virtual methods
.method public a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/wn;->a:Landroidx/appcompat/view/menu/wn$b;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/wn$b;->a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object p1

    return-object p1
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/wn;->a:Landroidx/appcompat/view/menu/wn$b;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/wn$b;->b(Z)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/wn;->a:Landroidx/appcompat/view/menu/wn$b;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/wn$b;->c(Z)V

    return-void
.end method
