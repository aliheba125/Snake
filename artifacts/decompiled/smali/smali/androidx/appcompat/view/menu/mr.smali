.class public final synthetic Landroidx/appcompat/view/menu/mr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/el0;


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/or;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/or;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/mr;->a:Landroidx/appcompat/view/menu/or;

    iput-object p2, p0, Landroidx/appcompat/view/menu/mr;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/mr;->a:Landroidx/appcompat/view/menu/or;

    iget-object v1, p0, Landroidx/appcompat/view/menu/mr;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/or;->b(Landroidx/appcompat/view/menu/or;Landroid/content/Context;)Landroidx/appcompat/view/menu/vi;

    move-result-object v0

    return-object v0
.end method
