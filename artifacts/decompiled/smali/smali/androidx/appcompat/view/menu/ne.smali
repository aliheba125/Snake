.class public final synthetic Landroidx/appcompat/view/menu/ne;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/el0;


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/re;

.field public final synthetic b:Landroidx/appcompat/view/menu/ud;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/re;Landroidx/appcompat/view/menu/ud;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/ne;->a:Landroidx/appcompat/view/menu/re;

    iput-object p2, p0, Landroidx/appcompat/view/menu/ne;->b:Landroidx/appcompat/view/menu/ud;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/ne;->a:Landroidx/appcompat/view/menu/re;

    iget-object v1, p0, Landroidx/appcompat/view/menu/ne;->b:Landroidx/appcompat/view/menu/ud;

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/re;->h(Landroidx/appcompat/view/menu/re;Landroidx/appcompat/view/menu/ud;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
