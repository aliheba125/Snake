.class public final Landroidx/appcompat/view/menu/ri$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/l21$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/ri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/ri$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ri$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroidx/appcompat/view/menu/l21;
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/ri$b;->a:Landroid/content/Context;

    const-class v1, Landroid/content/Context;

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/lj0;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Landroidx/appcompat/view/menu/ri;

    iget-object v1, p0, Landroidx/appcompat/view/menu/ri$b;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/ri;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/ri$a;)V

    return-object v0
.end method

.method public bridge synthetic b(Landroid/content/Context;)Landroidx/appcompat/view/menu/l21$a;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ri$b;->c(Landroid/content/Context;)Landroidx/appcompat/view/menu/ri$b;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/content/Context;)Landroidx/appcompat/view/menu/ri$b;
    .locals 0

    invoke-static {p1}, Landroidx/appcompat/view/menu/lj0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Landroidx/appcompat/view/menu/ri$b;->a:Landroid/content/Context;

    return-object p0
.end method
