.class public final synthetic Landroidx/appcompat/view/menu/iv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/pf;


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/mv;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/mv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/iv;->a:Landroidx/appcompat/view/menu/mv;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/iv;->a:Landroidx/appcompat/view/menu/mv;

    check-cast p1, Landroid/content/res/Configuration;

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/mv;->d(Landroidx/appcompat/view/menu/mv;Landroid/content/res/Configuration;)V

    return-void
.end method
