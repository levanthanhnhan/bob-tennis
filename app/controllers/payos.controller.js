const service = require("../services/fund.service");

// Webhook PayOS
exports.webhook = (req, res) => {
    console.log('Handle Webhook');
    
    if (req.body.success) {
        var data = req.body.data;
        service.updateBilling(data);
        service.updateFundByMember(data);
        res.status(200).json({"ok": true});
    }
}