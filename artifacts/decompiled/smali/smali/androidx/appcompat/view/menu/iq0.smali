.class public final synthetic Landroidx/appcompat/view/menu/iq0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/er0$b;


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/er0;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/er0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/iq0;->a:Landroidx/appcompat/view/menu/er0;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/iq0;->a:Landroidx/appcompat/view/menu/er0;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/er0;->u(Landroidx/appcompat/view/menu/er0;Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
